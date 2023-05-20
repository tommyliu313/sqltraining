/*https://media.licdn.com/dms/image/D4E22AQESeOL9BcbVDw/feedshare-shrink_1280/0/1684283258359?e=1687392000&v=beta&t=6bkdPX7pONOSQ5E8NYxOEbltOI0q3L9UIek7NVSWHt8*/

BEGIN TRY
  BEGIN TRANSACTION;

  INSERT INTO Customers (CustomerName, ContactName, CountryCode) 
  VALUES ('Cardinal','Tom B. Erichsen','Norway');

  COMMIT TRANSACTION;
END TRY
BEGIN CATCH
  IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;

  INSERT INTO ErrorLog (ErrorMsg, ErrorSeverity, ErrorState, ErrorProcedure, ErrorLine)
  VALUES (ERROR_MESSAGE(),ERROR_SEVERITY(),ERROR_STATE(), ERROR_PROCEDURE(), ERROR_LINE());

  RAISERROR('An error occurred when inserting the new customer: %s', 16, 1, ERROR_MESSAGE());
END CATCH