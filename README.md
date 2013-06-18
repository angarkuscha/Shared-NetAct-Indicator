Shared-NetAct-Indicator
=======================

Shared Network Activity Indicator Class: AGNetworkActivity based on build in reference counting in iOS ARC applications.<p>
The AGNetworkActivity class can be used by many objects simultaneously to indicate network activity.

Requiers:
---------
ARC

Files:
------

    AGNetworkActivity.h
    AGNetworkActivity.m

Usage:
------

    @interface MyClass : NSObject {
      AGNetworkActivity* _networkActivity;
    }
    @end


    @implementation MyClass

    - (void)startSomeNetworkTask {
      // do some stuff ...
      // set network activity indicator visible
      // it will hide automaticaly after the MyClass instance is deallocated and _networkActivity is released
      _networkActivity = [AGNetworkActivity sharedNetworkActivity];
    }
    
    - (void)hideNetworkActivityIndicator {
      // this hides the network activity indicator explicitly if no other network activities exist
      _networkActivity = nil;
    }

    @end
