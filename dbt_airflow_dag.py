import os
from datetime import datetime

from cosmos import DbtDag, ProjectConfig, ProfileConfig, ExecutionConfig
from cosmos.profiles import SnowflakeUserPasswordProfileMapping

profile_config = ProfileConfig(
    profile_name="default",
    target_name="dev",
    profile_mapping=SnowflakeUserPasswordProfileMapping(
        conn_id="snowflake_conn", 
        profile_args={
            "database": "dbt_db",
            "schema": "dbt_schema"
        },
    )
)

dbt_snowflake_dag = DbtDag(
    project_config=ProjectConfig(
        "/usr/local/airflow/dags/dbt/dbt_snowflake_project"  # ✅ container path
    ),
    operator_args={"install_deps": True},
    profile_config=profile_config,
    execution_config=ExecutionConfig(
        dbt_executable_path="dbt"  # ✅ use global executable
    ),
    schedule=None,
    start_date=datetime(2025, 5, 19),
    catchup=False,
    dag_id="dbt_dag",
)