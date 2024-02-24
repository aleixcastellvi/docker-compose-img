-- Create a schema for bank transactions
CREATE SCHEMA bank_transactions;

-- Switch to the bank transactions schema
SET search_path TO bank_transactions;

-- Create the bank transactions table
CREATE TABLE transactions (
    id SERIAL PRIMARY KEY,
    account_from VARCHAR(20) NOT NULL,
    account_to VARCHAR(20) NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    transaction_type VARCHAR(10) NOT NULL,
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    description TEXT
);

-- Insert some transaction records
INSERT INTO transactions (account_from, account_to, amount, transaction_type, description) VALUES
  ('123456789', '987654321', 100.00, 'Transfer', 'Payment of invoice'),
  ('987654321', '123456789', 50.00, 'Transfer', 'Refund'),
  ('111122223', '123456789', 200.00, 'Deposit', 'Initial deposit'),
  ('987654321', '111122223', 30.00, 'Transfer', 'Online purchase'),
  ('123456789', '111122223', 20.00, 'Withdrawal', 'ATM withdrawal'),
  ('111122223', '987654321', 80.00, 'Transfer', 'Loan payment'),
  ('123456789', '987654321', 15.00, 'Transfer', 'Monthly expense'),
  ('987654321', '123456789', 40.00, 'Transfer', 'Friend refund'),
  ('111122223', '987654321', 25.00, 'Transfer', 'Grocery shopping'),
  ('123456789', '111122223', 75.00, 'Transfer', 'Utility payment');
