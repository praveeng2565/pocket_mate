# Pocket Mate App

A simple **Pocket Mate Application** built in Flutter for personal use. Offline-first with optional cloud sync, supports room-based expense tracking, UPI/Razorpay payments, and notifications.

---

## Table of Contents

1. [Project Overview](#project-overview)  
2. [Features](#features)  
3. [Folder Structure](#folder-structure)  
4. [Required Packages](#required-packages)  
5. [Step-by-Step Development Plan](#step-by-step-development-plan)  
6. [Running the App](#running-the-app)  

---

## Project Overview

- **Platform:** Flutter (Android + iOS)  
- **State Management:** Provider  
- **Local Storage:** Hive  
- **Cloud Sync:** Firebase Firestore  
- **Authentication:** Local PIN + Fingerprint/Face Unlock  
- **Payments:** UPI intent / Razorpay  
- **Notifications:** Local + Firebase Cloud Messaging  

---

## Features

1. **Authentication & Security**  
   - PIN/Pattern unlock  
   - Fingerprint/Face unlock  

2. **Room Management**  
   - Create rooms/groups  
   - Add multiple members  
   - Sync data locally and to cloud  

3. **Expense Tracking**  
   - Add expenses (title, amount, paid by, category, date)  
   - Monthly equal split calculations  
   - Settlement summary  

4. **Payments**  
   - Initiate UPI or Razorpay payment from app  
   - Receive callbacks for success, failure, pending  
   - Update transaction status  

5. **Notifications**  
   - Local reminders  
   - Push notifications for new expenses, settlements, and payment status  

---

## Folder Structure

lib/
├── main.dart
├── models/
│ ├── room.dart
│ ├── member.dart
│ └── expense.dart
├── providers/
│ ├── room_provider.dart
│ └── expense_provider.dart
├── screens/
│ ├── auth_screen.dart
│ ├── dashboard_screen.dart
│ ├── room_screen.dart
│ ├── add_expense_screen.dart
│ └── settlement_screen.dart
├── services/
│ ├── hive_service.dart
│ ├── firebase_service.dart
│ └── payment_service.dart
└── utils/
└── notification_helper.dart