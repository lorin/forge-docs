# Creating a new project

I'm going to use `~/dev/simple-mod` as the location for the mod files, and
`simplemod` as the name of the mod.

## Download the Mod Development Kit

1. Go to http://files.minecraftforge.net/ and in the "Download Recommended" box,
click the Mdk disk.

2. You'll likely get some horrible popup asking you to to download a new media
player or somesuch. Cancel that download.

3. Click the red SKIP button in the top right-hand corner.

4. Download the file, should be named something like forge-1.8.9-11.15.1.1722-mdk.zip

## Create a git repo, unzip the files and commit it

```
mkdir ~/dev/simple-mod
cd ~/dev/simple-mod
unzip ~/Downloads/forge-1.8.9-11.15.1.1722-mdk.zip
git init
git add .
git commit -m 'initial commit'
```

## Modify build.gradle

Here are the changes I made:

```
diff --git a/build.gradle b/build.gradle
index 8b83723..382a6bb 100644
--- a/build.gradle
+++ b/build.gradle
@@ -21,8 +21,8 @@ plugins {
 }
 */
 version = "1.0"
-group= "com.yourname.modid" // http://maven.apache.org/guides/mini/guide-naming-conventions.html
-archivesBaseName = "modid"
+group= "org.lorinhochstein.simplemod" // http://maven.apache.org/guides/mini/guide-naming-conventions.html
+archivesBaseName = "simplemod"

 minecraft {
     version = "1.8.9-11.15.1.1722"
```
