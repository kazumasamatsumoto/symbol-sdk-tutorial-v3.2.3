```bash
PS C:\Users\kazum\tutorial\symbol-sdk\defualt-project> tsx .\account.ts
```

結果

```bash
AccountKey Hex KeyPair {
  _privateKey: PrivateKey {
    bytes: Uint8Array(32) [
      234,  36, 168,  63, 127, 140,  3, 207,
       18,  99,   7, 117,  43,  65, 39,  79,
      236, 245,  29, 166,  66, 100, 16,  25,
       35, 159,  46, 183, 167,  20, 46, 210
    ]
  },
  _keyPair: {
    publicKey: Uint8Array(32) [
      189, 153, 222,   6, 251, 178, 185, 224,
      254,  87,  78,  65, 217,  94,  36,  83,
        1, 156,  21, 149,  87,  87,  83, 187,
      239, 122,  15,  50, 180, 242, 178, 108
    ],
    privateKey: Uint8Array(32) [
      234,  36, 168,  63, 127, 140,  3, 207,
       18,  99,   7, 117,  43,  65, 39,  79,
      236, 245,  29, 166,  66, 100, 16,  25,
       35, 159,  46, 183, 167,  20, 46, 210
    ]
  }
}
AccountKey has PrivateKey toString EA24A83F7F8C03CF126307752B41274FECF51DA642641019239F2EB7A7142ED2
AccountKey has PublicKey toString BD99DE06FBB2B9E0FE574E41D95E2453019C1595575753BBEF7A0F32B4F2B26C
Alice's Address: Address {
  bytes: Uint8Array(24) [
    152, 227, 200,  88,  16, 167,
    245, 253, 112,   7, 215, 176,
    180, 133, 124, 246,  90, 220,
    139, 105,  43, 239, 191, 135
  ]
}
Alice's Address to String: TDR4QWAQU72724AH26YLJBL46ZNNZC3JFPX37BY
Alice's Address is equal to Recovered Alice's Address: true
```
