WITH stateCd AS (
	SELECT state_code, state_name
	FROM state_abbr
)
UPDATE governors_county
SET state_code = stateCd.state_code
FROM stateCd
WHERE trim(UPPER(governors_county.state_name)) = trim(stateCd.state_name)


