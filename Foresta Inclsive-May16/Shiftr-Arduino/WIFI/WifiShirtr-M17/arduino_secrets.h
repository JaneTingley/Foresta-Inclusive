#define SECRET_SSID "Evol"
#define SECRET_PASS "5138loove"

#ifdef USE_SHIFTR
 #define MQTT_NAMESPACE "kintel-wifi"
 #define MQTT_USERNAME "66ddedc6"
 #define MQTT_PASSWORD "fe2d57914c828f0b"
#elif defined(USE_AIO)
 #define MQTT_NAMESPACE "kintel/feeds/float"
 #define MQTT_USERNAME "kintel"
 #define MQTT_PASSWORD "0e9699dd54974aaf86507292a1aaf560"
#endif
