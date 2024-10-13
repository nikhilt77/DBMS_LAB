-- Create the SALESMAN table
CREATE TABLE SALESMAN (
    Salesman_id INT PRIMARY KEY,       
    Name VARCHAR(50) NOT NULL,         
    City VARCHAR(50),                  
    State VARCHAR(50),                 
    Commission DECIMAL(10, 2)          
);

-- Insert sample data into the SALESMAN table
INSERT INTO SALESMAN (Salesman_id, Name, City, State, Commission) VALUES
(1, 'John', 'Mumbai', 'Maharashtra', 12000),
(2, 'Rahul', 'Bangalore', 'Karnataka', 9000),
(3, 'Sara', 'Kolkata', 'West Bengal', 15000),
(4, 'Nikhil', 'Cochin', 'Kerala', 23000),
(5, 'Roshy', 'Kozhikode', 'Kerala', 560);

-- PL/SQL block to retrieve and display salesmen with commission > 10000
DECLARE 
  v_name SALESMAN.Name%TYPE;
  v_com SALESMAN.Commission%TYPE;
  CURSOR cur IS SELECT Name,Commission from  SALESMAN where Commission>10000;
  BEGIN
    OPEN cur;
    LOOP
      FETCH cur INTO v_name,v_com;
      EXIT when cur%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE('NAME '||v_name);
    END LOOP;
    CLOSE cur;
  END;
  /
