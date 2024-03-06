package com.ragnbone.Server.api.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import java.time.LocalDateTime;
import com.ragnbone.Server.models.Booking;

@Repository
public interface BookingRepository extends JpaRepository<Booking, Integer> {

    @Transactional
    @Modifying
    @Query(value = "INSERT INTO BOOKING( :bookingID, :userID, :address, :postalCode, :adhoc, :bookingDate)", nativeQuery = true)
    int registerBooking(@Param("bookingID") int bookingID,
             @Param("userID") int userID,
            @Param("address") String address,
            @Param("postalCode") String postalCode,
            @Param("adhoc") boolean adhoc,
            @Param("bookingDate") LocalDateTime bookingDate);

    @Query(value = "SELECT * FROM BOOKING WHERE bookingID = :bookingID", nativeQuery = true)
    int getBookingById(@Param("bookingID") Integer bookingID);

    @Query(value = "UPDATE BOOKING SET bookingID = :bookingID, userID = :userID, address = :address, postalCode = :postalCode, adhoc = :adhoc, bookingDate = :bookingDate", nativeQuery = true)
    int updateBooking(@Param("bookingID") int bookingID,
             @Param("userID") int userID,
            @Param("address") String address,
            @Param("postalCode") String postalCode,
            @Param("adhoc") boolean adhoc,
            @Param("bookingDate") LocalDateTime bookingDate);

    @Query(value = "DELETE FROM booking WHERE bookingID = :bookingID", nativeQuery = true)
    int deleteBooking(@Param("bookingID") Integer bookingID);
    
}
