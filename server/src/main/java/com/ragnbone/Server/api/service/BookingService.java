package com.ragnbone.Server.api.service;

import com.ragnbone.Server.api.repository.BookingRepository;
import com.ragnbone.Server.exceptions.BookingNotFoundException;
import com.ragnbone.Server.models.Booking;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.ZoneId;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class BookingService {

    @Autowired
    BookingRepository bookingRepository;

    public void registerBooking(Booking booking) {
        booking.setBookingDate(LocalDateTime.now((ZoneId.of("Asia/Singapore"))));
        bookingRepository.save(booking);

    }

    public Booking getBookingById(int bookingID) throws BookingNotFoundException {
        Booking booking = bookingRepository.findById(bookingID)
                .orElse(null); // Assign null if not found
        if (booking == null) {
            throw new BookingNotFoundException("Booking not found");
        }
        return booking;
    }

    public void deleteBooking(int bookingID) throws IOException, BookingNotFoundException{
        //Check if the product exists
        Booking booking = getBookingById(bookingID);
        bookingRepository.delete(booking);
    }
}
