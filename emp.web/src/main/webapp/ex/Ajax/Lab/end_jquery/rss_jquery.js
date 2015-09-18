var links = $("div[data-role='content'] p > a");
links.each(function(index, item) {
    $(this).bind('click', function getRssData(event) {
        $.ajax({
            type:"GET",
            data: {
                rssurl:$(this).attr("data-rssurl")
            },
            url:"./proxy_common.jsp",
            dataType:"xml",
            success: function(data, status){
                var target = $("#news_rss div[data-role=content] .content-list");
                target.html("");
                $("item", data).each(function(index, item) {
                    var title = $('title', item).text();
                    var link = $('link', item).text();
                    var desc = $('description', this).text(); //this로 참조 가능함
                    target.append("<p>"+ ++index +". <a href='" + link + "'>" + title + "</a><span>" + desc + "</span></p>"); 
                });
            } //end success callback
        }); //end ajax
    }) //end click event
}); //end each

