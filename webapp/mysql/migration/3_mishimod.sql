CREATE INDEX idx_sessions_session_token ON sessions(session_token);
CREATE INDEX idx_orders_order_time ON orders(order_time);
CREATE INDEX idx_completed_orders_completed_time ON completed_orders(completed_time);
