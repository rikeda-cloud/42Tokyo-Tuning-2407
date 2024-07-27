CREATE INDEX idx_timestamp ON locations(timestamp);
CREATE INDEX idx_driver_id ON tow_trucks(driver_id);
CREATE INDEX idx_two_truck_id ON locations(tow_truck_id);