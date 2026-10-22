# UBlueprintPlatformLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBlueprintPlatformLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBlueprintPlatformLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBlueprintPlatformLibrary](https://developer.gp.qq.com/api/#/searchContent/UBlueprintPlatformLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBlueprintPlatformLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBlueprintPlatformLibrary)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **ClearAllLocalNotifications** |  | Clear all pending local notifications. Typically this will be done before scheduling new notifications when going into the background |
| void | **ScheduleLocalNotificationAtTime** | FDateTime & FireDateTime, bool LocalTime, FText & Title, FText & Body, FText & Action, FString &ActivationEvent | Schedule a local notification at a specific time, inLocalTime specifies the current local time or if UTC time should be used params FireDateTime -The time at which to fire the local notification params LocalTime -If true the provided time is in the local timezone, if false it is in UTC params Title  |
| void | **ScheduleLocalNotificationFromNow** | int32 inSecondsFromNow, FText & Title, FText & Body, FText & Action, FString &ActivationEvent | Schedule a local notification to fire inSecondsFromNow from now params inSecondsFromNow -The seconds until the notification should fire params Title -The title of the notification params Body -The more detailed description of the notification params Action -The text to be displayed on the slider con |
| void | **ScheduleLocalNotificationBadgeAtTime** | FDateTime & FireDateTime, bool LocalTime, FString &ActivationEvent | Schedule a local notification badge at a specific time, inLocalTime specifies the current local time or if UTC time should be used params FireDateTime -The time at which to fire the local notification params LocalTime -If true the provided time is in the local timezone, if false it is in UTC params  |
| void | **ScheduleLocalNotificationBadgeFromNow** | int32 inSecondsFromNow, FString &ActivationEvent | Schedule a local notification badge to fire inSecondsFromNow from now params inSecondsFromNow -The seconds until the notification should fire params ActivationEvent -A string that is passed in the delegate callback when the app is brought into the foreground from the user activating the notification |
| void | **CancelLocalNotification** | FString &ActivationEvent | Cancel a local notification given the ActivationEvent params ActivationEvent -The string passed into the Schedule call for the notification to be cancelled |
| void | **GetLaunchNotification** | bool & NotificationLaunchedApp, FString & ActivationEvent, int32 &FireDate | Get the local notification that was used to launch the app params NotificationLaunchedApp -Return true if a notification was used to launch the app params ActivationEvent -Returns the name of the ActivationEvent if a notification was used to launch the app params FireDate -Returns the time the notif |

