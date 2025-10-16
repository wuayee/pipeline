UPDATE app_builder_app
SET create_by = 'system',
    update_by = 'system'
WHERE app_suite_id IN ('ec6f8e93a80541bb930fc22678ef7043',
                       '5185dad4c8124522a2612c20f8497cf0',
                       '0b4fe5a430104edfbe0dc6cff0ebea19',
                       'dfe319109bc84f6793645e3483c029ca');

ALTER TABLE app_builder_app
    ALTER COLUMN user_group_id DROP NOT NULL;
ALTER TABLE app_builder_form
    ALTER COLUMN user_group_id DROP NOT NULL;
ALTER TABLE store_plugin
    ALTER COLUMN user_group_id DROP NOT NULL;
ALTER TABLE store_plugin_tool
    ALTER COLUMN user_group_id DROP NOT NULL;
ALTER TABLE store_app
    ALTER COLUMN user_group_id DROP NOT NULL;