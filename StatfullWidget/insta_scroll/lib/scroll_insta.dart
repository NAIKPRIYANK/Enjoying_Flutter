import 'package:flutter/material.dart';

class Assignment4 extends StatefulWidget {
  const Assignment4({super.key});
  @override
  State<Assignment4> createState() => _Assignment4State();
}

class _Assignment4State extends State<Assignment4> {
  bool? _icon1 = false;
  bool? _icon2 = false;
  bool? _icon3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Instagram",
          style: TextStyle(
            fontFamily: 'Billabong',
            // fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 30,
          ),
        ),
        actions: const [
          Icon(
            Icons.favorite_rounded,
            color: Colors.red,
          )
        ],
      ),
      /*  body:ListView( 
      children: [ 
         Column( 
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[ 
            Container(

            color:Colors.amber,
            child:Image.network( 
              "https://images.pexels.com/photos/346529/pexels-photo-346529.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
              width:double.infinity,
            ),
            ),
            Row( 
              children:[ 
                IconButton( 
                  onPressed:(){} ,
                   icon: const Icon( 
                    Icons.favorite_outline_outlined,
                   ),
                   ),
                   IconButton(
                    onPressed:(){},
                     icon: const Icon( 
                      Icons.comment_outlined,
                     ),
                     ),
                     IconButton(
                      onPressed: (){},
                       icon: const Icon( 
                        Icons.send,
                       ),
                       ),
              ],
            ),
          ],
        ),
             Column( 
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[ 
            Container(

            color:Colors.amber,
            child:Image.network( 
              "https://images.pexels.com/photos/346529/pexels-photo-346529.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
              width:double.infinity,
            ),
            ),
            Row( 
              children:[ 
                IconButton( 
                  onPressed:(){} ,
                   icon: const Icon( 
                    Icons.favorite_outline_outlined,
                   ),
                   ),
                   IconButton(
                    onPressed:(){},
                     icon: const Icon( 
                      Icons.comment_outlined,
                     ),
                     ),
                     IconButton(
                      onPressed: (){},
                       icon: const Icon( 
                        Icons.send,
                       ),
                       ),
              ],
            ),
          ],
        ),
             Column( 
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[ 
            Container(

            color:Colors.amber,
            child:Image.network( 
              "https://images.pexels.com/photos/346529/pexels-photo-346529.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
              width:double.infinity,
            ),
            ),
            Row( 
              children:[ 
                IconButton( 
                  onPressed:(){} ,
                   icon: const Icon( 
                    Icons.favorite_outline_outlined,
                   ),
                   ),
                   IconButton(
                    onPressed:(){},
                     icon: const Icon( 
                      Icons.comment_outlined,
                     ),
                     ),
                     IconButton(
                      onPressed: (){},
                       icon: const Icon( 
                        Icons.send,
                       ),
                       ),
              ],
            ),
          ],
        )
      ], 
    ),  
    );*/

      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.amber,
                  child: Image.network(
                    "https://images.pexels.com/photos/346529/pexels-photo-346529.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    width: double.infinity,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _icon1 = !_icon1!;
                        });
                      },
                      icon: Icon(
                        _icon1!
                            ? Icons.favorite_rounded
                            : Icons.favorite_border_outlined,
                        color: _icon1! ? Colors.red : Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_outline,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.amber,
                  child: Image.network(
                    "https://images.pexels.com/photos/346529/pexels-photo-346529.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    width: double.infinity,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _icon2 = !_icon2!;
                        });
                      },
                      icon: Icon(
                        _icon2!
                            ? Icons.favorite_rounded
                            : Icons.favorite_border_outlined,
                        color: _icon2! ? Colors.red : Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_outline,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.amber,
                  child: Image.network(
                    "https://images.pexels.com/photos/346529/pexels-photo-346529.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    width: double.infinity,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _icon3 = !_icon3!;
                        });
                      },
                      icon: Icon(
                        _icon3!
                            ? Icons.favorite_rounded
                            : Icons.favorite_border_outlined,
                        color: _icon3! ? Colors.red : Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_outline,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
