# run with "rails runner -e production PATH_TO_THIS_FILE"
# WARNING: USE AT YOUR OWN RISK!!!

require_relative('shared/logger')
# require_relative('shared/parse_csv')
require('pry')

AccessRight
  .where(inventory_pool_id: "b534b07c-d9bf-4572-840c-0a630b8cd8ed", role: "customer")
  .joins(<<~SQL)
    INNER JOIN reservations
    ON reservations.user_id = access_rights.user_id
    AND reservations.inventory_pool_id = access_rights.inventory_pool_id
    AND reservations.status != 'signed'
  SQL
  .delete_all
