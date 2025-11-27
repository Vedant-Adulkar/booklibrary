# 📚 Decentralized Book Library (Flare Network – Coston2 Testnet)

## **Contract Address**
**0x175A2cBf350E9cE29023858BEa07EEd4542E89b7**  
Explorer: https://coston2-explorer.flare.network/address/0x175A2cBf350E9cE29023858BEa07EEd4542E89b7

---

## **📘 Project Description**

This project implements a fully on-chain **Decentralized Book Library** on the Flare Network (Coston2 Testnet).  
The smart contract allows anyone to view available books, while the owner (librarian) can add new books.  
Users can **borrow** and **return** books, with borrowing logic enforced by the smart contract itself.

The frontend React application (Next.js + Wagmi + Viem) integrates with the contract to provide a clean and simple UI for interacting with the library.

---

## **✨ Features**

### **Smart Contract Features**
- **Add new books** (title, author, and number of copies)
- **Borrow books** — reduces available copy count
- **Return books** — restores copy count
- **View individual books**
- **Track whether a user has borrowed a specific book**
- **View total number of books**
- **Owner-only book creation**

### **Frontend Features**
- Connect via any EVM wallet (MetaMask, etc.)
- Add a book (owner only)
- Borrow a book by ID
- Return a book by ID
- View all books with:
  - Title  
  - Author  
  - Copies available  
  - Book ID  
- Transaction status indicators:
  - Pending
  - Confirming
  - Confirmed
  - Errors

---

## **🔍 Problem This Project Solves**

Physical libraries rely on centralized systems to track borrowing, returning, and availability.  
This Web3 project tackles the limitations of centralized library databases:

### **✔ Transparency**
Anyone can verify:
- Book availability  
- Borrowing/return history (per user)  
- Total number of books  

### **✔ Immutability**
Book records cannot be tampered with by unauthorized parties.

### **✔ Ownership and Permissions**
Only the contract owner can add books, ensuring controlled catalog management.

### **✔ Trustless Borrowing System**
Smart contracts enforce:
- Book availability  
- Borrower identity  
- Return logic  
- Prevention of double-borrowing  

### **Use Cases**
- University or community libraries experimenting with blockchain
- Web3 projects needing decentralized resource lending
- Demonstrations of asset lending via smart contracts
- Educational blockchain examples

---

## **🎯 Value Proposition**

This project delivers:
- A **real-world use case** for smart contract–powered resource sharing  
- A **clean, beginner-friendly frontend**  
- A **lightweight but complete example** of a Web3 dApp  
- A **trustless and transparent inventory system**  
- Easy extensibility (NFT books, loan limits, time limits, etc.)

---

If you want enhancements such as **search**, **pagination**, **borrow history**, **admin dashboards**, or **NFT-based borrowing**, just ask!
