SELECT JSON_ARRAY('abc','def') AS ja;

SELECT JSON_ARRAY('abc','def') AS ja FROM dual;

SELECT JSON_BUILD_ARRAY('abc','def') AS ja;

SELECT '[' + 
    CONCAT_WS(',', QUOTNAME(STRING_ESCAPE('abc','json'), '"'), QUOTENAME('def', '"')) +
      ']' AS JA;