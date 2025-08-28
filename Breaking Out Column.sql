SELECT SUBSTRING_INDEX(Address, '-', 1) as Street_Address, 
SUBSTRING_INDEX(SUBSTRING_INDEX(Address, '- ', 2), '- ', -1) AS City,
-- najpierw wyliczamy substring który zostawia nam 123 Main St- Anytown a pozniej wrzucamy w 2, ktory liczy nam do pierwszego od konca - czyli np. Anytown
SUBSTRING_INDEX(SUBSTRING_INDEX(Address, '- ', -2), '-', 1) AS State_Name, 
-- najpierw wyliczamy substring który zostawia nam NC- 34567 a pozniej wrzucamy w 2, ktory liczy nam do pierwszego - czyli np. NC
SUBSTRING_INDEX(Address, '- ', -1) AS Zip_Code
FROM addresses;