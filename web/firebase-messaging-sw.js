importScripts("https://www.gstatic.com/firebasejs/8.10.0/firebase-app.js");
importScripts("https://www.gstatic.com/firebasejs/8.10.0/firebase-messaging.js");

firebase.initializeApp({
  apiKey: "AIzaSyDmULL5qfOg08405aJpv0xgjksNrYTm5Ck",
  authDomain: "ingpoglb.firebaseapp.com", 
  projectId: "ingpoglb",
  storageBucket: "ingpoglb.firebasestorage.app", 
  messagingSenderId: "280114464298", 
  appId: "1:280114464298:web:00102a83e6c510a293e553", 
});

const messaging = firebase.messaging();

messaging.onBackgroundMessage(function(payload) {
  console.log('[firebase-messaging-sw.js] Received background message ', payload);
  const notificationTitle = payload.notification.title;
  const notificationOptions = {
    body: payload.notification.body,
    icon: '/icons/Icon-192.png'
  };

  return self.registration.showNotification(notificationTitle, notificationOptions);
});