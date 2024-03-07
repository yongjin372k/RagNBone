package com.ragnbone.Server.api.controllers;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import com.ragnbone.Server.models.Booking;
import com.ragnbone.Server.models.Location;
import com.ragnbone.Server.api.repository.BookingRepository;
import com.ragnbone.Server.api.service.BookingService;
import com.ragnbone.Server.exceptions.BookingNotFoundException;

@RestController
@RequestMapping("/api/v1/booking")
public class BookingApiController {

    @Autowired
    BookingService bookingService;

    @Autowired
    BookingRepository bookingRepository;

    @RequestMapping(value = "/register", method = RequestMethod.POST, produces = { "application/json" })
    @ResponseBody
    public ResponseEntity<String> registerBooking(@RequestBody Booking booking) {
        
        try {
            
            bookingService.registerBooking(booking);

            return ResponseEntity.ok("Booking Registered Successfully!");

        } catch (Exception e) {
            e.printStackTrace();
            
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to Book");
            
        }

    }

    @GetMapping(value = "/{bookingID}")
    public ResponseEntity<Booking> getBookingById(@PathVariable int bookingID) {
        try {
            Booking booking = bookingService.getBookingById(bookingID);
            return ResponseEntity.ok(booking);
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null);
        }
    }
    
    @PostMapping("/update/{bookingID}")
    public ResponseEntity<Void> updateLocation(@PathVariable int bookingID, @RequestBody Booking booking) {
        bookingService.updateBooking(bookingID, booking);
        return ResponseEntity.ok().build();
    }

    @DeleteMapping("/delete/{bookingID}")
    public ResponseEntity<String> deleteBooking(@PathVariable("bookingID") int bookingID) throws IOException, BookingNotFoundException{
            bookingService.deleteBooking(bookingID);
            return ResponseEntity.ok("Booking deleted successfully");
        
    
    }
}
