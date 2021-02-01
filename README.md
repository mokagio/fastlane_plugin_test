This project showcases what I think is a bug in [Fastlane](github.com/fastlane/fastlane) version 2.172.0: when an action with non-optional non-string parameters plugin is run via `fastlane run` and Fastlane asks you to input the parameter value, it will treat your input as a string and not as the specified type.

To reproduce:

1. Clone this repo
2. Run `bundle install`
3. Run `bundle exec fastlane run integer_param_demo`
4. You'll be prompted to instert a value for `int_param`, type some digits and hit enter
5. Fastlane will tell you it expected an Integer but you passed a String 😮

```
➜ bundle exec fastlane run integer_param_demo
[✔] 🚀
+------------------------------------+---------+--------------------+
|                           Used plugins                            |
+------------------------------------+---------+--------------------+
| Plugin                             | Version | Action             |
+------------------------------------+---------+--------------------+
| fastlane-plugin-integer_param_demo | 0.1.0   | integer_param_demo |
+------------------------------------+---------+--------------------+

[15:08:09]: --------------------------------
[15:08:09]: --- Step: integer_param_demo ---
[15:08:09]: --------------------------------
[15:08:09]: To not be asked about this value, you can specify it using 'int_param'
[15:08:09]: A non optional Integer parameter: 123
'int_param' value must be a Integer! Found String instead.
[15:08:15]: To not be asked about this value, you can specify it using 'int_param'
[15:08:15]: A non optional Integer parameter:
```
