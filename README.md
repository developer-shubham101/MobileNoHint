# mobile_no_hint

The `mobile_no_hint` Flutter package offers an easy method to retrieve phone number hints from a user's device using the Phone Number Hint API.

Please check the original doc as well  [https://developers.google.com/identity/phone-number-hint/android](https://developers.google.com/identity/phone-number-hint/android)

## Getting Started


### Import package
```dart
import 'package:mobile_no_hint/mobile_no_hint.dart';
```

Call function in initState

```dart
@override  
void initState() {  
	super.initState(); 
	if (Platform.isAndroid) {  
	  MobileNoHint mobileNumber = MobileNoHint();  
	  WidgetsBinding.instance  
	  .addPostFrameCallback((timeStamp) => mobileNumber.mobileNumber());  
	  mobileNumber.getMobileNumberStream.listen((event) {  
	    if (event?.states == PhoneNumberStates.PhoneNumberSelected) {  
	      _mobileController.text = event!.phoneNumber!;  
	  }  
	  });  
	}
}  
```   