# RagNBone
A sustainable recycling collection app based on the rag-and-bone industry

Project by Jesliza and Crew for Google x dEEEvelopers Tech4Tomorrow Hackathon

![alt text](https://github.com/yongjin372k/RagNBone/blob/main/tech4tomorrow.jpg?raw=true)

### **Application Properties**
##### Copy pasta this into your **application.properties** under resource

```
spring.datasource.url=jdbc:mysql://localhost:3306/ragnbone
Shift=true&useLegacyDatetimeCode=false&serverTimezone=UTC
server.error.whitelabel.enabled=false
spring.datasource.username= <YOUR_USERNAME_HERE>
spring.datasource.password= <YOUR_PASSWORD_HERE>
server.port=8080
spring.jpa.hibernate.naming-strategy=org.hibernate.cfg.EJB3NamingStrategy
spring.jpa.hibernate.naming.physical-strategy=org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl
spring.jpa.hibernate.naming.implicit-strategy=org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyJpaImpl

spring.servlet.multipart.max-file-size=10MB
spring.servlet.multipart.max-request-size=10MB
spring.devtools.restart.enabled=false
```


#####Use your own Google Routes API: https://developers.google.com/maps/documentation/routes 

```
<application
        android:label="rag_and_bone"
        android:name="${applicationName}"
        android:icon="@mipmap/ic_launcher">
        <activity
            android:name=".MainActivity"
            android:exported="true"
            android:launchMode="singleTop"
            android:theme="@style/LaunchTheme"
            android:configChanges="orientation|keyboardHidden|keyboard|screenSize|smallestScreenSize|locale|layoutDirection|fontScale|screenLayout|density|uiMode"
            android:hardwareAccelerated="true"
            android:windowSoftInputMode="adjustResize">
            <!-- Specifies an Android theme to apply to this Activity as soon as
                 the Android process has started. This theme is visible to the user
                 while the Flutter UI initializes. After that, this theme continues
                 to determine the Window background behind the Flutter UI. -->
            <meta-data
              android:name="io.flutter.embedding.android.NormalTheme"
              android:resource="@style/NormalTheme"
              />
            <intent-filter>
                <action android:name="android.intent.action.MAIN"/>
                <category android:name="android.intent.category.LAUNCHER"/>
            </intent-filter>
        </activity>
        <!-- Don't delete the meta-data below.
             This is used by the Flutter tool to generate GeneratedPluginRegistrant.java -->
        <meta-data
            android:name="flutterEmbedding"
            android:value="2" />
        <meta-data
            android:name="com.google.android.geo.API_KEY"
            android:value="<INSERT YOUR API KEY>" />
    </application>
```
