# ByteCoin

This repository contains the source code for ByteCoin, an iOS application that allows users to track the real-time price of Bitcoin in various currencies using the CoinAPI service. The app is built using Swift and provides a user-friendly interface for currency conversion.

## Table of Contents

1. [Introduction](#introduction)
2. [Features](#features)
3. [Requirements](#requirenebts)
4. [Installation](#installation)
5. [Usage](#usage)
6. [Contribution](#contribution)

## Introduction

ByteCoin is a simple yet powerful iOS application that fetches real-time Bitcoin exchange rates for a variety of currencies. The app uses the CoinAPI service to provide accurate and up-to-date information.

## Features

- Real-time Bitcoin Price Tracking: Fetches the current price of Bitcoin in various currencies.
  
- Currency Conversion: Allows users to select from a range of currencies to see the Bitcoin price.
  
- User-friendly Interface: Simple and intuitive design for easy navigation.

## Requirements

- iOS 13.0+
  
- Xcode 11+
  
- A valid CoinAPI key

## Installation

To set up the project on your local machine, follow these steps:

1. Clone the repository:

```sh
git clone https://github.com/adnanAlKharfan/Bitcoin-Price-Application.git
```

2. Navigate to the project directory:

```sh
cd Bitcoin-Price-Application
```

3. Open the project in Xcode:

```sh
open ByteCoin.xcodeproj
```

4. Install dependencies using CocoaPods:

```sh
pod install
```

5. Configure CoinAPI Key:

- Replace the placeholder API key in CoinManager.swift with your CoinAPI key.

## Usage

1. Launch the app in Xcode:

- Select the target device (e.g., iPhone simulator or connected device).
  
- Click on the run button or press Cmd + R to build and run the app.

2. Select Currency:

- Use the picker to select your desired currency.
  
- The app will display the real-time Bitcoin price in the selected currency.

## Contributing

Contributions are welcome! Feel free to open issues or submit pull requests.
