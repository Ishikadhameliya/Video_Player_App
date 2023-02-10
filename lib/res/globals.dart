import 'package:flutter/material.dart';

class Videos {
  static int initvalue = 0;
  static List all_photo = [
    {
      "image":
      "https://www.asus.com/media/Odin/Websites/global/SubSeries/global_ZenBook-Pro_1/P_setting_xxx_0_90_end_185.png?webp",
      "name": "LAPTOP"
    },
    {
      "image":
      "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/entertainment-lovesongs-1608319374.jpg?crop=1.00xw:1.00xh;0,0&resize=980:*",
      "name": "music"
    },
    {
      "image":
      "https://thumbs.dreamstime.com/z/landscape-nature-mountan-alps-rainbow-76824355.jpg",
      "name": "NATURE"
    },
    {
      "image":
      "https://www.healthyeating.org/images/default-source/home-0.0/nutrition-topics-2.0/general-nutrition-wellness/2-2-2-3foodgroups_fruits_detailfeature.jpg?sfvrsn=64942d53_4",
      "name": "Fruits"
    },
    {
      "image":
      "https://www.educationworld.in/wp-content/uploads/2018/12/Skycrpers-768x576.jpg",
      "name": "Building",
    },
    {
      "image":
      "https://images.pexels.com/photos/3729464/pexels-photo-3729464.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "name": "Car"
    }
  ];
  static List all_videos = [
    [
      "https://assets.mixkit.co/videos/preview/mixkit-hands-of-a-man-playing-on-a-computer-43527-large.mp4",
      "https://assets.mixkit.co/videos/preview/mixkit-reflection-of-a-screen-in-glasses-221-large.mp4",
      "https://assets.mixkit.co/videos/preview/mixkit-womans-hand-using-computer-mouse-43539-large.mp4",
    ],
    [
      "https://assets.mixkit.co/videos/preview/mixkit-shadow-of-a-saxophonist-playing-inspired-43759-large.mp4",
      "https://assets.mixkit.co/videos/preview/mixkit-pianist-playing-in-an-elegant-hall-43778-large.mp4",
      "https://assets.mixkit.co/videos/preview/mixkit-talented-pianist-playing-an-elegant-grand-piano-43774-large.mp4",
      "https://assets.mixkit.co/videos/preview/mixkit-silhouette-of-a-trumpet-player-energetically-playing-43761-large.mp4",
    ],
    [
      "https://assets.mixkit.co/videos/preview/mixkit-waves-coming-to-the-beach-5016-large.mp4",
      "https://assets.mixkit.co/videos/preview/mixkit-top-aerial-shot-of-seashore-with-rocks-1090-large.mp4",
      "https://assets.mixkit.co/videos/preview/mixkit-clouds-and-blue-sky-background-2408-large.mp4",
      "https://assets.mixkit.co/videos/preview/mixkit-rain-falling-on-the-water-of-a-lake-seen-up-18312-large.mp4",
    ],
    [
      "https://assets.mixkit.co/videos/preview/mixkit-face-of-a-scared-and-sad-man-43846-large.mp4",
      "https://assets.mixkit.co/videos/preview/mixkit-representation-of-a-man-tormented-by-his-demons-43842-large.mp4",
      "https://assets.mixkit.co/videos/preview/mixkit-face-of-a-very-sad-woman-crying-43851-large.mp4",
      "https://assets.mixkit.co/videos/preview/mixkit-representation-of-a-woman-haunted-by-her-demons-43855-large.mp4",
    ],
    [
      "https://assets.mixkit.co/videos/preview/mixkit-rinsing-strawberries-apples-and-grapes-holding-hands-10434-large.mp4",
      "https://assets.mixkit.co/videos/preview/mixkit-fresh-sliced-fruit-placed-on-a-table-10419-large.mp4",
      "https://assets.mixkit.co/videos/preview/mixkit-surface-covered-with-many-fruits-and-vegetables-seen-in-detail-10433-large.mp4",
      "https://assets.mixkit.co/videos/preview/mixkit-hand-of-a-person-squeezing-an-orange-on-a-light-10435-large.mp4",
      "https://assets.mixkit.co/videos/preview/mixkit-presentation-of-watermelon-slices-10426-large.mp4",
    ],
    [
      "https://assets.mixkit.co/videos/preview/mixkit-times-square-during-a-rainy-night-4332-large.mp4",
      "https://assets.mixkit.co/videos/preview/mixkit-new-york-buildings-at-night-pan-shot-4330-large.mp4",
      "https://assets.mixkit.co/videos/preview/mixkit-aerial-view-of-a-city-during-the-night-4308-large.mp4",
      "https://assets.mixkit.co/videos/preview/mixkit-aerial-shot-of-a-busy-avenue-in-the-city-2034-large.mp4",
      "https://assets.mixkit.co/videos/preview/mixkit-night-movement-of-a-main-avenue-of-a-big-city-41161-large.mp4",
    ],
    [
      "https://vod-progressive.akamaized.net/exp=1665701790~acl=%2Fvimeo-prod-skyfire-std-us%2F01%2F4978%2F13%2F349890119%2F1415270667.mp4~hmac=a521572c310ab0be57a310c7581cde67e4e0761b5c629df2fa010ea92590f7a4/vimeo-prod-skyfire-std-us/01/4978/13/349890119/1415270667.mp4",
      "https://player.vimeo.com/progressive_redirect/playback/669246125/rendition/360p/360p.mp4?loc=external&oauth2_token_id=57447761&signature=f94cb258ecad4c2afdff559fb3f814df86bc87b1f0353700e11c729ab7b6936b",
      "https://player.vimeo.com/external/517089165.sd.mp4?s=643667f3eb75676239487e2e4c37bb0760ae57c0&profile_id=165&oauth2_token_id=57447761",
      "https://player.vimeo.com/external/178163449.sd.mp4?s=e9d33063f5b5706ca5cfdba4e17fe110a9fc0e3e&profile_id=164&oauth2_token_id=57447761",
      "https://player.vimeo.com/external/505555774.sd.mp4?s=32337ca6d568352c6f9b05271e9bb787014eeb91&profile_id=165&oauth2_token_id=57447761",
    ],
    [
      "https://player.vimeo.com/external/475346667.sd.mp4?s=ad9ca23b68af10f9f06bb01376181af63773ae60&profile_id=165&oauth2_token_id=57447761",
      "https://player.vimeo.com/external/554916198.sd.mp4?s=937065ce9551684ce1aee1434dfc242ed0bd45f9&profile_id=165&oauth2_token_id=57447761",
      "https://player.vimeo.com/external/488146659.hd.mp4?s=ec8de219064c0f4bdc9c6917c0cb3482917265a6&profile_id=174&oauth2_token_id=57447761",
      "https://player.vimeo.com/external/514185553.sd.mp4?s=0cb3d6a53c713f6602cfd4e5678c02e8cac9ef2b&profile_id=165&oauth2_token_id=57447761",
      "https://player.vimeo.com/external/563232308.sd.mp4?s=869d4cbaee58feb80d768566a37bf34a96c58abd&profile_id=165&oauth2_token_id=57447761",
      "https://player.vimeo.com/external/481165626.sd.mp4?s=ed9799425cc81068e2e6870ab89cfe0df7e00bd8&profile_id=165&oauth2_token_id=57447761"
    ]
  ];

  static List contrllor = [];
}