/* mx_entries table creation
 *
 * This table contains MX record entries      
 *
 * $Id$
 */

CREATE TABLE mx_entries (
	id	    SERIAL PRIMARY KEY,
	type        INT4 NOT NULL, /* 1=zone,2=host,3=rr_mx */
        ref         INT4 NOT NULL, /* ptr to table speciefied by type field */
        pri	    INT4 NOT NULL CHECK (pri >= 0),
	mx	    TEXT,
        comment     TEXT
);

