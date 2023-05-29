import scrapy


class IpldataSpider(scrapy.Spider):
    name = "iplData"
    allowed_domains = ["www.espn.in"]
    start_urls = ["http://www.espn.in/cricket/scores/series/8048/season/2023/india-premier-league/"]

    def parse(self, response):
        result = response.css("a.cscore_button.cscore_button--grouped")
        matches = []
        for i in range(0,218,3):
            match = result[i].css("::attr(href)").get()
            matches.append(match)
        for match in matches:
            yield response.follow(match, callback=self.getData)
    def getData(self, response):
        teams = response.css("span.cscore_name")
        team1 = teams[2].css("::text").get()
        team2 = teams[5].css("::text").get()
        getPlace = response.css("div.cscore_info-overview ::text").get()
        str_list = getPlace.split(" ")
        place = str_list[7]

