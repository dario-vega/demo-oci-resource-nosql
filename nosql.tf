## This configuration was generated by terraform-provider-oci


resource oci_nosql_table nosql_demoKeyVal {
  compartment_id = var.compartment_ocid
  ddl_statement  = "CREATE TABLE IF NOT EXISTS demoKeyVal ( key INTEGER GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1 NO CYCLE ), value JSON, PRIMARY KEY (key))"
  is_auto_reclaimable = var.always_free
  name                = "demoKeyVal"
  table_limits {
    max_read_units     = "50"
    max_storage_in_gbs = "25"
    max_write_units    = "50"
  }
}
