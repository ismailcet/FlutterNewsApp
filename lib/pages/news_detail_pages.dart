import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:newsapp/pages/home_page.dart';

class NewsDetailPages extends StatefulWidget {
  final String newsImage,
      newsTitle,
      newsDate,
      author,
      description,
      content,
      source;
  const NewsDetailPages(
      {required this.newsImage,
      required this.newsTitle,
      required this.newsDate,
      required this.author,
      required this.description,
      required this.content,
      required this.source,
      Key? key})
      : super(key: key);

  @override
  State<NewsDetailPages> createState() => _NewsDetailPagesState();
}

class _NewsDetailPagesState extends State<NewsDetailPages> {
  @override
  Widget build(BuildContext context) {
    final format = DateFormat('MMMM dd, yyyy');
    DateTime dateTime = DateTime.parse(widget.newsDate);
    final width = MediaQuery.sizeOf(context).width * 1;
    final height = MediaQuery.sizeOf(context).height * 1;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            height: height * .45,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(40)),
              child: CachedNetworkImage(
                  imageUrl: widget.newsImage,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Container(
                        child: spinKit2,
                      ),
                  errorWidget: (context, url, error) => const Icon(
                        Icons.error_outline,
                        color: Colors.red,
                      )),
            ),
          ),
          Container(
            height: height * .6,
            margin: EdgeInsets.only(top: height * .4),
            padding: EdgeInsets.only(top: 20, right: 20, left: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(40)),
            ),
            child: ListView(
              children: [
                Text(
                  widget.newsTitle,
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87),
                ),
                SizedBox(
                  height: height * .02,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.source,
                        style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87),
                      ),
                    ),
                    Text(
                      format.format(dateTime),
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * .03,
                ),
                Text(
                  widget.description,
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
