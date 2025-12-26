return {
  settings = {
    yaml = {
      schemas = {
        ["https://panther-community-us-east-1.s3.amazonaws.com/latest/logschema/schema.json"] = "internal/log_analysis/yamlschemas/schemas/**/*.yml",
        ["https://panther-community-us-east-1.s3.amazonaws.com/latest/logschema/schema-tests.json"] = "internal/log_analysis/yamlschemas/schemas/**/*_tests.yml",
        ["https://raw.githubusercontent.com/panther-labs/panther_analysis_tool/main/panther_analysis_tool/detection_schemas/analysis_config_schema.json"] = {
          "rules/**",
          "policies/**",
          "queries/**",
        },
      },
    },
  },
}
