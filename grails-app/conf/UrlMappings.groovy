class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
        
        "/classes/$id?"{
            controller="cidoc"
            action="index"
        }
        
        "/class/$id"{
            controller="cidoc"
            action="classInformation"
        }
        
        "/properties/$id?"{
            controller="cidoc"
            action="properties"
        }

        "/"(view:"/index")
        "500"(view:'/error')
	}
}
