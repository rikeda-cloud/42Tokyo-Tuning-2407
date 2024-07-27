CREATE INDEX idx_user_id ON dispatchers(user_id);

CREATE INDEX idx_car_value ON orders(car_value);
CREATE INDEX idx_status ON orders(status);
CREATE INDEX idx_order_time ON orders(order_time);
CREATE INDEX idx_node_id ON orders(node_id);
