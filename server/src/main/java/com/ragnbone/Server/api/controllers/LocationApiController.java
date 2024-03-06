package com.ragnbone.server.api.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ragnbone.server.api.repository.LocationRepository;
import com.ragnbone.server.api.service.LocationService;
import com.ragnbone.server.models.Location;

@RestController
@RequestMapping("/api/v1/location")
public class LocationApiController {

    @Autowired
    private LocationService locationService;

    @Autowired
    private LocationRepository locationRepository;

    @PostMapping("/update")
    public ResponseEntity<Void> updateLocation(@RequestBody Location location) {
        locationService.saveLocationUpdate(location);
        return ResponseEntity.ok().build();
    }

    @GetMapping("/read")
    public ResponseEntity<List<Location>> readLocation() {
        List<Location> matching = locationRepository.readLocation();
        return ResponseEntity.ok(matching);
    } 
}
