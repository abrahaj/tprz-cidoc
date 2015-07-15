$( document ).ready(function() {
	$('*[data-poload]').click(function() {
		var e=$(this);
		e.off('click');
		$.get(e.data('poload'),function(d) {
			console.log(d);
			e.popover({content: d}).popover('show');
		});
	});
	
	var ToC =
		  "<nav role='navigation' class='table-of-contents'>" +
		    "<h2>On this page:</h2>" +
		    "";

		var newLine, el, title, link;

		$("article h3").each(function() {

		  el = $(this);
		  title = el.text();
		  link = "#" + el.attr("id");

		  newLine =
		    "" +
		      "<a href='" + link + "'>" +
		        title +
		      "</a>" +
		    "| ";

		  ToC += newLine;

		});

		ToC +=
		   "" +
		  "</nav>";

		$(".all-questions").prepend(ToC);
});