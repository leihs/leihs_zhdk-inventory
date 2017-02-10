## Examples

Complete deploy to `test` aka `leihs-v4-test.zhdk.ch`, from the `deploy` directory:

    ansible-playbook -v -i ../zhdk-inventory/test-hosts deploy_play.ym


Restore production data

    ansible-playbook -v -i ../zhdk-inventory/test-hosts db-restore_play.yml
