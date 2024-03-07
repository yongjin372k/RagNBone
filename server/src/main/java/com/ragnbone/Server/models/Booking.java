package com.ragnbone.Server.models;


import jakarta.persistence.*;
import lombok.Data;
import java.time.LocalDateTime;
import java.time.LocalTime;

@Entity
@Table(name="Booking")
@Data
public class Booking {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "bookingID")
    private int bookingID;

    @Column(name = "userID")
    private int userID;

    @Column(name = "address")
    private String address;

    @Column(name = "postalCode")
    private String postalCode;

    @Column(name = "adhoc")
    private boolean adhoc;

    @Column(name = "bookingDate")
    private LocalDateTime bookingDate;

    @Column(name = "paymentType")
    private boolean paymentType;

    @Column(name = "pickupTime")
    private LocalTime pickupTime;
    
    public Booking() {

    }

    public Booking(
        int bookingID, int userID, String address, String postalCode, boolean adhoc, LocalDateTime bookingDate, boolean paymentType, LocalTime pickupTime
    ) {
        this.bookingID = bookingID;
        this.userID = userID;
        this.address = address;
        this.postalCode = postalCode;
        this.adhoc = adhoc;
        this.bookingDate = bookingDate;
        this.paymentType = paymentType;
        this.pickupTime = pickupTime;
    }


    public int getBookingID() {
        return this.bookingID;
    }

    public void setBookingID(int bookingID) {
        this.bookingID = bookingID;
    }

    public int getUserID() {
        return this.userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getAddress() {
        return this.address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPostalCode() {
        return this.postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public boolean isAdhoc() {
        return this.adhoc;
    }

    public boolean getAdhoc() {
        return this.adhoc;
    }

    public void setAdhoc(boolean adhoc) {
        this.adhoc = adhoc;
    }

    public LocalDateTime getBookingDate() {
        return this.bookingDate;
    }

    public void setBookingDate(LocalDateTime bookingDate) {
        this.bookingDate = bookingDate;
    }

    public boolean getPaymentType() {
        return this.paymentType;
    }

    public void setPaymentType(boolean paymentType) {
        this.paymentType = paymentType;
    }

    public LocalTime getPickupTime() {
        return pickupTime;
    }

    public void setPickupTime(LocalTime pickupTime) {
        this.pickupTime = pickupTime;
    }

    @Override
    public String toString() {
      return "Booking{"
          + "bookingID="
          + bookingID
          + ", userID'"
          + userID
          + '\''
          + ", address='"
          + address
          + '\''
          + ", postalCode='"
          + postalCode
          + '\''
          + ", adhoc='"
          + adhoc
          + '\''
          + ", bookingDate='"
          + bookingDate
          + '\''
          + ", paymentType='"
          + paymentType
          + '\''
          + ", pickupTime='"
          + pickupTime
          + '\''
          + '}';
    }
}
