import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 50,left: 20,right: 20),
            height: 120,
            child: Row(
              children: [
                Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey[200],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search,color: Colors.grey),
                          border: InputBorder.none,
                          hintText: 'Search',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                ),
                SizedBox(width: 20),
                Icon(Icons.camera_alt,size: 30),
              ],
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Stories',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                          ),
                          Text('See Archive')
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 180,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          children: [
                            makeStory(
                              storyImage: 'images/story/story-1.jpg',
                              userImage: 'images/aatik-tasneem.jpg',
                              userName: 'Md Azim',
                            ),
                            makeStory(
                              storyImage: 'images/story/story-3.jpg',
                              userImage: 'images/aiony-haust.jpg',
                              userName: 'Rafiu',
                            ),
                            makeStory(
                              storyImage: 'images/story/story-4.jpg',
                              userImage: 'images/averie-woodard.jpg',
                              userName: 'Averie Woodard',
                            ),
                            makeStory(
                              storyImage: 'images/story/story-6.jpg',
                              userImage: 'images/azamat-zhanisov.jpg',
                              userName: 'Azamat Zhanisov',
                            ),
                            makeStory(
                              storyImage: 'images/story/story-5.jpg',
                              userImage: 'images/foto-sushi.jpg',
                              userName: 'Foto Sushi',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40),
                      makeFeed(
                        username: 'Abdul Rafiu',
                        userImage: 'images/aiony-haust.jpg',
                        feedTime: '1 hr Ago',
                        feedText: 'Lorem Ipsum is simply dummy text of the printing and '
                            'typesetting industry. Lorem Ipsum has been the industrys '
                            'standard dummy text ever since the 1500s,',
                        feedImage: 'images/story/story-6.JPG',
                      ),
                      SizedBox(height: 40),
                      Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.favorite,
                                color: Colors.pink,
                                size: 24.0,
                              ),
                              Icon(
                                Icons.favorite_border,
                                color: Colors.pink,
                                size: 24.0,
                              ),
                              Text(
                                  '2.5K',
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)
                              ),
                              SizedBox(width: 100),
                              Text(
                                  '400 Comments',
                                style: TextStyle(fontSize: 14, color: Colors.grey[800]),
                                // textAlign: TextAlign.right,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white,
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.favorite,color: Colors.blue),
                                  border: InputBorder.none,
                                  hintText: 'Like',
                                  hintStyle: TextStyle(color: Colors.blue,fontSize: 14),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white,
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.message_sharp,color: Colors.blue),
                                  border: InputBorder.none,
                                  hintText: 'Comment',
                                  hintStyle: TextStyle(color: Colors.blue),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white,
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.share,color: Colors.blue),
                                  border: InputBorder.none,
                                  hintText: 'Share',
                                  hintStyle: TextStyle(color: Colors.blue),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
          ),
        ],
      ),
    );
  }
  Widget makeStory({storyImage, userImage, userName}){
    return AspectRatio(
        aspectRatio: 1.5/2,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(storyImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.1),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2),
                  image: DecorationImage(
                    image: AssetImage(userImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(userName, style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
  Widget makeFeed({username, userImage, feedTime, feedText, feedImage}){
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(userImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Text(username, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                      SizedBox(height: 5),
                      Text(feedTime, style: TextStyle(fontSize: 14,color: Colors.grey)),
                    ],
                  ),
                ],
              ),
              Icon(Icons.more_horiz, size: 30),
            ],
          ),
          SizedBox(height: 20),
          Text(feedText, style: TextStyle(fontSize: 15,color: Colors.grey,height: 1.5)),
          SizedBox(height: 20),
          Container(
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(feedImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
