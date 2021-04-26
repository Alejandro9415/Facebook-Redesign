import 'package:facebookredesign/Model/poster.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PosterPage extends StatelessWidget {
  final Poster poster;

  const PosterPage({Key key, this.poster}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 15,
                child: Image.asset(poster.person),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(poster.name,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF19295C))),
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.globeAmericas,
                          size: 8,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Hace 3 días',
                          style: TextStyle(fontSize: 8),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Spacer(),
              Container(
                height: 15,
                width: 15,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFFEFF2F7)),
                child: FaIcon(
                  Icons.star,
                  color: Color(0xFF2196F3),
                  size: 8,
                ),
              ),
              Container(
                height: 15,
                width: 15,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFFEFF2F7)),
                child: FaIcon(
                  Icons.more_horiz,
                  size: 8,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            poster.comment,
            style: TextStyle(fontSize: 10),
          ),
          Image.asset(
            poster.photo,
            height: 240,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                '30 Comentarios.',
                style: TextStyle(fontSize: 10),
              ),
              Text(
                ' 5 Compartidos',
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
          Row(
            children: [
              Button(
                Icon(
                  FontAwesomeIcons.solidThumbsUp,
                  size: 14,
                  color: Color(0xFF2D3F7B),
                ),
              ),
              Button(
                Icon(
                  FontAwesomeIcons.comment,
                  size: 14,
                  color: Color(0xFF2D3F7B),
                ),
              ),
              Button(
                Icon(
                  FontAwesomeIcons.share,
                  size: 14,
                  color: Color(0xFF2D3F7B),
                ),
              ),
              Spacer(),
              Text(
                'Mao Lop y 50 personas más ',
                style: TextStyle(fontSize: 8, color: Colors.grey),
              ),
              Flexible(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      child: Icon(
                        Icons.thumb_up_rounded,
                        color: Colors.white,
                        size: 10,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF1977F3),
                      ),
                    ),
                    Positioned(
                      left: 15,
                      child: Container(
                        width: 20,
                        height: 20,
                        child: Icon(
                          Icons.favorite,
                          color: Colors.white,
                          size: 10,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFF31954),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Divider(),
          Column(
            
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 15,
                    child: Image.asset(poster.photoComment),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        poster.nameComment,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        poster.publicComment,
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      Row(
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Me gusta',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                    fontSize: 10, color: Color(0xFF2D3F7B)),
                              )),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Responder',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                  fontSize: 10, color: Color(0xFF2D3F7B)),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  Button(this.widget);

  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(3),
      margin: const EdgeInsets.all(3),
      child: this.widget,
      decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
    );
  }
}
