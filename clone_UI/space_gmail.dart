import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clone_ui_gmail/mail_gmail.dart';
import 'package:clone_ui_gmail/chat_gmail.dart';
import 'package:clone_ui_gmail/meet_gmail.dart';
import 'package:clone_ui_gmail/login.dart';

class SpaceGmail extends StatelessWidget {
  const SpaceGmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        // Kích thước ưu tiên với margin
        child: Container(
          margin: EdgeInsets.only(top: 10, left: 10, right: 10),
          // Margin cho AppBar
          child: AppBar(
            title: Padding(
              padding: EdgeInsets.only(left: 10),
              // Thêm khoảng trống 10px bên trái
              child: TextField(
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: "Tìm kiếm trong cuộc trò chuyện",
                  hintStyle: TextStyle(color: Colors.black),
                ),
              ),
            ),
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Color(0xFFEAF1FB),
            elevation: 8,
            shadowColor: Colors.grey[800],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            actions: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginGmail()));
                },
                child: Padding(
                  padding: EdgeInsets.only(right: 10),
                  // Thêm khoảng trống 10px bên phải
                  child: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/avata_gmail.png'),
                    minRadius: 17,
                    maxRadius: 17,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [Text("Không gian")],
      ),
      // bottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: "Mail",
            icon: Icon(
              Icons.mail_outline,
              color: Colors.black,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: "Chat",
            icon: Icon(
              Icons.chat_bubble,
              color: Colors.black,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: "Space",
            icon: Icon(
              Icons.people_alt,
              color: Colors.black,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: "Meeting",
            icon: Icon(
              Icons.videocam_outlined,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
        onTap: (index) {
          // Xử lý khi người dùng nhấp vào BottomNavigationBarItem
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MailGmail()),
            );
          }
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChatGmail()),
            );
          }
          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SpaceGmail()),
            );
          }
          if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MeetGmail()),
            );
          }
        },
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Xử lý khi nhấp vào nút FAB
        },
        backgroundColor: Color(0xFFc2e7ff),
        icon: Icon(
          Icons.add,
          color: Colors.black,
        ),
        label: Text(
          'Không gian mới',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 70,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
                child: Text(
                  "Gmail",
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 23),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.check_circle_outline,
                color: Colors.green,
              ),
              title: Text(
                "Hoạt động",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(color: Colors.black, width: 1),
                ),
              ),
              child: ListTile(
                leading: Icon(
                  Icons.create,
                  color: Colors.black,
                ),
                title: Text(
                  "Thêm trạng thái",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            //==========
            ListTile(
              leading: Icon(
                Icons.backup_table_rounded,
                color: Colors.black,
              ),
              title: Text(
                "Tất cả hộp thư đến",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.markunread_mailbox_outlined,
                color: Colors.black,
              ),
              title: Text(
                "Hộp thư đến",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                "Tất cả nhãn dán",
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.star_border,
                color: Colors.black,
              ),
              title: Text(
                "Có gắn sao",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.access_time_sharp,
                color: Colors.black,
              ),
              title: Text(
                "Đã tạm ẩn",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.label_important_outline,
                color: Colors.black,
              ),
              title: Text(
                "Quan trọng",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.send_sharp,
                color: Colors.black,
              ),
              title: Text(
                "Đã gửi",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.send_and_archive_outlined,
                color: Colors.black,
              ),
              title: Text(
                "Đã lên lịch",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.next_week_outlined,
                color: Colors.black,
              ),
              title: Text(
                "Hộp thư đi",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.insert_page_break_outlined,
                color: Colors.black,
              ),
              title: Text(
                "Thư nháp",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.mail_outline,
                color: Colors.black,
              ),
              title: Text(
                "Tất cả thư",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.report_gmailerrorred_outlined,
                color: Colors.black,
              ),
              title: Text(
                "Thư rác",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.delete_outline,
                color: Colors.black,
              ),
              title: Text(
                "Thùng rác",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.label_outlined,
                color: Colors.black,
              ),
              title: Text(
                "[Imap]/Drafts",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                "Các ứng dụng của Google",
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.calendar_today,
                color: Colors.black,
              ),
              title: Text(
                "Lịch",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(color: Colors.black, width: 0.2),
                ),
              ),
              child: ListTile(
                leading: Icon(
                  Icons.contact_page_outlined,
                  color: Colors.black,
                ),
                title: Text(
                  "Danh bạ",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: Text(
                "Cài đặc",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.help_outline,
                color: Colors.black,
              ),
              title: Text(
                "Trợ giúp và phản hồi",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
