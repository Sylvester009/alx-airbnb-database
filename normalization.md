# Database Normalization (Up to Third Normal Form)

## 1. First Normal Form (1NF)

To satisfy 1NF, all tables must:

* Contain only atomic values (no repeating groups).
* Have unique rows identifiable by a primary key.
* Store each value in its own cell.

All tables in the AirBnB schema meet these criteria:

* Primary keys use UUIDs.
* No multivalued or repeating attributes exist.
* All fields contain atomic data.

**Result: All tables comply with 1NF.**

---

## 2. Second Normal Form (2NF)

2NF applies to tables with composite primary keys. It requires:

* The table is already in 1NF.
* All non-key attributes depend on the whole primary key.

Since every table in this schema uses a **single-column primary key (UUID)**, partial dependencies cannot exist.

**Result: All tables comply with 2NF.**

---

## 3. Third Normal Form (3NF)

To satisfy 3NF:

* The table must already be in 2NF.
* There must be **no transitive dependencies** (non-key attributes depending on other non-key attributes).

Each table was checked:

### **User**

All fields (name, email, role, etc.) depend directly on `user_id`.

### **Property**

Fields like name, description, location, and price depend only on `property_id`.

### **Booking**

start_date, end_date, total_price, and status depend solely on `booking_id`.

### **Payment**

amount, payment_method, and payment_date depend only on `payment_id`.

### **Review**

rating and comment depend only on `review_id`.

### **Message**

message_body and sent_at depend only on `message_id`.

No attribute in any table depends on another non-key attribute.

**Result: All tables comply with 3NF.**

---

## Conclusion

After reviewing all entities, the AirBnB database schema:

* Contains no redundant data.
* Does not violate any normalization rules.
* Fully satisfies **Third Normal Form (3NF)**.

No structural adjustments are required. The schema is efficient, normalized, and well-designed for relational database usage.
