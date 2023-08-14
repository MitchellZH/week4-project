INSERT INTO customers(
  full_name,
  email
) VALUES (
  'Sam L.',
  'sam@gmail.com'
), (
  'Faith M.',
  'faith@gmail.com'
), (
  'Dylan K.',
  'dylan@gmail.com'
);

INSERT INTO salespeople(
  full_name,
  email
) VALUES (
  'Omar K.',
  'omar@gmail.com'
), (
  'Jake M.',
  'jake@gmail.com'
), (
  'Oakland T.',
  'oakland@gmail.com'
);

INSERT INTO mechanics(
  full_name,
  email
) VALUES (
  'Britt B.',
  'britt@gmail.com'
), (
  'Deven G.',
  'deven@gmail.com'
), (
  'Justin D.',
  'justin@gmail.com'
);

INSERT INTO cars(
  make,
  model,
  car_year,
  salesperson_id,
  customer_id
) VALUES (
  'Mitsubishi',
  'Endeavor',
  '2005',
  5,
  4
), (
  'Honda',
  'Accord',
  '2011',
  6,
  4
), (
  'Toyota',
  'Camry',
  '2006',
  6,
  5
), (
  'Tesla',
  'Model S',
  '2024',
  4,
  6
);

INSERT INTO invoices(
  customer_id,
  car_id,
  salesperson_id
) VALUES (
  4,
  1,
  5
), (
  4,
  2,
  6
), (
  5,
  3,
  6
), (
  6,
  4,
  4
);

INSERT INTO service_tickets(
  car_id,
  customer_id
) VALUES (
  2,
  4
), (
  4,
  6
);

INSERT INTO service_history(
  issue,
  mechanic_id,
  car_id,
  sv_ticket_id
) VALUES (
  'flat tire',
  4,
  2,
  1
), (
  'dead battery',
  6,
  4,
  2
);