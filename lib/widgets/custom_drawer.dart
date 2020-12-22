import 'package:flutter/material.dart';
import 'package:socialApp/data/data.dart';
import 'package:socialApp/screens/home_screen.dart';
import 'package:socialApp/screens/login_screen.dart';
import 'package:socialApp/screens/photo_clip.dart';
import 'package:socialApp/screens/profile_screen.dart';
import 'package:socialApp/screens/uploading_image.dart';

class CustomDrawer extends StatelessWidget {
  _buildDrawerOption(Icon icon, String title, Function onTap) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20.0,
        ),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                currentUser.backgroundImageUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 20.0,
                left: 20.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 3.0, color: Theme.of(context).primaryColor),
                        shape: BoxShape.circle,
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          currentUser.profileImageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      currentUser.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          _buildDrawerOption(
            Icon(Icons.dashboard),
            'Home',
            () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) => HomeScreen(),
              ),
            ),
          ),
          Divider(),
          _buildDrawerOption(
              Icon(Icons.chat),
              'Chat',
              () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => PhotoClip()))),
          Divider(),
          _buildDrawerOption(
              Icon(Icons.map),
              'Map',
              () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => UploadingImage()))),
          Divider(),
          _buildDrawerOption(
            Icon(Icons.account_circle),
            'Profile',
            () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) => ProfileScreen(
                  user: currentUser,
                ),
              ),
            ),
          ),
          Divider(),
          _buildDrawerOption(Icon(Icons.settings), 'Setting', () {}),
          Divider(),
          Expanded(
              child: Align(
            alignment: FractionalOffset.bottomCenter,
            child: _buildDrawerOption(
              Icon(Icons.directions_run),
              'Logout',
              () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (_) => LoginScreen(),
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
