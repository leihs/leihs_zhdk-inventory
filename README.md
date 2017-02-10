## Examples

Complete deploy to `test` aka `leihs-v4-test.zhdk.ch`, from the `deploy` directory:

    ansible-playbook -v -i ../zhdk-inventory/test-hosts deploy_play.ym


Restore production data, you might need to set
`database_dump_restore_file_path`, see also `./host_vars/test.yml`:

    ansible-playbook -v -i ../zhdk-inventory/test-hosts db-restore_play.yml
