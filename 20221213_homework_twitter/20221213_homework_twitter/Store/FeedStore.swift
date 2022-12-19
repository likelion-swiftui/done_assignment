//
//  FeedStore.swift
//  20221213_homework_twitter
//
//  Created by Donghoon Bae on 2022/12/19.
//

import Foundation

class FeedStore: ObservableObject {
    @Published var feeds: [Feed] = [
        Feed(userName: "아이유(IU) 공식 트위터", userID: "_IUofficial", content: "제42회 황금촬영상영화제🏆 \n신인여우상\n\n이지은 배우의 수상을 축하합니다🎊\n배우 이지은의 발자취에\n의미 있는 하루를 그려준\n유애나 고맙습니다💜\n\n#이지은 #LeeJiEun\n#제42회_황금촬영상영화제", likes: 7038, reTweet: 1981, comments: [], image: "_IUofficial"),
        Feed(userName: "Tim Cook", userID: "tim_cook", content: "Happy Hanukkah to all those celebrating! As you gather around the menorah with family and friends, I hope you enjoy the first of many nights filled with health and happiness. 🕎", likes: 4483, reTweet: 304, comments: [], image: "tim_cook"),
        Feed(userName: "Leo Messi", userID: "WeAreMessi", content: "A DREAM COME TRUE! 😘🏆", likes: 130000, reTweet: 12000, comments: [], image: "WeAreMessi"),
        Feed(userName: "aespa", userID: "aespa_offical", content: "Red Velvet X aespa 'Beautiful Christmas' MV Behind The Scenes 🎄✨\nyoutu.be/y9BDUgM05ao\n#SMTOWN2023 #SMCU_PALACE #2022_WINTER_SMTOWN #SMTOWN #SMTOWN_LIVE #SMCU\n#BeautifulChristmas #RedVelvet #aespa🏆", likes: 6528, reTweet: 3945, comments: [], image: "aespa_official"),
        Feed(userName: "Apple Support", userID: "AppleSupport", content: "The best kind of backup is the one you don’t have to think about. 🪄 \nBack up your Mac automatically with Time Machine. To learn how, watch our video on YouTube: apple.co/3FxLxW0", likes: 268, reTweet: 37, comments: [], image: "AppleSupport"),
        Feed(userName: "US Army", userID: "us_army", content: "👀 Meet @USArmy Sgt 1st Class Lincoln Charles, he'd like to share his holiday greeting with you. \n#StrongerTogether #HappyHolidays #MeetYourArmy #TisTheSeason \n@VCorps @US_EUCOM @DeptofDefense", likes: 46, reTweet: 12, comments: [], image: "us_army"),
    ]
    
    
}
