package tprz.cidoc
import grails.util.Holders
import groovy.util.slurpersupport.GPathResult;

import org.codehaus.groovy.grails.io.support.UrlResource
class CidocController {

    def index() {
        def baseFolder = Holders.getApplicationContext().getResource("/cidoc/").getFile().toString()
        def xml=new XmlSlurper(false, false, false).parse(new File(baseFolder,'/cidoc-crm-60.rdfs'))

        def allClasses=[]

        def classes = xml.childNodes().findAll{it.name()=="rdfs:Class"}
        def comment
        def subclass
        def subclasses=[]
        def name
        def property
        def properties=xml.childNodes().findAll{it.name()=="rdf:Property"}
        def domainProperties=[]

        classes.each{
            comment=it.children().findAll{child -> child.name()=="rdfs:comment"}.get(0)
            subclass=it.children().findAll(){child-> child.name()=="rdfs:subClassOf"}
            if (subclass.size()>0){
                subclass.each { sub ->
                    subclasses.add(sub.attributes()."rdf:resource")
                }
            }
            name = it.attributes()."rdf:about"

            domainProperties=findClassProperties(name,xml)

            allClasses.add([name:name, comment:comment.localText().toString(),subclasses:subclasses, domainProperties:domainProperties])
            subclasses=[]
            domainProperties=[]
        }
        render(view: "index", model: [classes:allClasses])
    }

    def properties() {
        def baseFolder = Holders.getApplicationContext().getResource("/cidoc/").getFile().toString()
        def xml=new XmlSlurper(false, false, false).parse(new File(baseFolder,'/cidoc-crm-60.rdfs'))

        def allProperties=[]

        def properties = xml.childNodes().findAll{it.name()=="rdf:Property"}
        def comment
        properties.each{
            comment=it.children().findAll{child -> child.name()=="rdfs:comment"}

            allProperties.add([name:it.attributes()."rdf:about",comment:comment])
        }
        render(view: "properties", model: [properties:allProperties])
    }

    def classInformation(){
        def baseFolder = Holders.getApplicationContext().getResource("/cidoc/").getFile().toString()
        def xml=new XmlSlurper(false, false, false).parse(new File(baseFolder,'/cidoc-crm-60.rdfs'))
        def id = params.id

        def results = xml.'**'.findAll{node -> node.name()=="rdfs:Class" && node.attributes()."rdf:about"==id}.get(0)
        def lang =[]
        results.children().each{
            if (it.attributes().containsKey("xml:lang")){
                lang.add([lang:it.attributes()."xml:lang",translation:it.text()])
            }
        }

        def domainProperties=findClassProperties(id,xml)
        def domainRanges=[]
        domainProperties.each {
            //println it.attributes()."rdf-about"
            it.children().each {child ->
                if ( child.name()=="rdfs:range"){
                    domainRanges.add([name:it.attributes()."rdf:about",range:child.attributes()."rdf:resource"])
                }
            }
        }

        render(view: "classInformation", model: [comment:results."rdfs:comment", id:id, lang:lang,domainRanges:domainRanges])
    }

    /**
     * Used in the JS Popover to fetch a comment
     * @return
     */
    def propertyComment(){
        def baseFolder = Holders.getApplicationContext().getResource("/cidoc/").getFile().toString()
        def xml=new XmlSlurper(false, false, false).parse(new File(baseFolder,'/cidoc-crm-60.rdfs'))
        def id = params.id
        def results = xml.'**'.findAll{node -> node.name()=="rdf:Property" && node.attributes()."rdf:about"==id}.get(0)
        render results."rdfs:comment"
    }
    
    /**
     * Used in the JS Popover to fetch a comment
     * @return
     */
    def classComment(){
        def baseFolder = Holders.getApplicationContext().getResource("/cidoc/").getFile().toString()
        def xml=new XmlSlurper(false, false, false).parse(new File(baseFolder,'/cidoc-crm-60.rdfs'))
        def id = params.id
        def results = xml.'**'.findAll{node -> node.name()=="rdfs:Class" && node.attributes()."rdf:about"==id}.get(0)
        render results."rdfs:comment"
    }

    private findClassProperties(String className, GPathResult xml){
        def properties=xml.childNodes().findAll{it.name()=="rdf:Property"}
        def property
        def domainProperties=[]
        property = properties.each{
            property = it.children().findAll{node -> node.name() == 'rdfs:domain'}
            if (property.getAt(0).attributes()."rdf:resource"==className){
                domainProperties.add(it)
            }
        }
        return domainProperties
    }
}
