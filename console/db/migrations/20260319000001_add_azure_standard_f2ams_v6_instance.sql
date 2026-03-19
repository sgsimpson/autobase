-- +goose Up

-- Add Azure Standard F2ams v6 instance type (2 vCPU, 16 GB RAM)
INSERT INTO public.cloud_instances (cloud_provider, instance_group, instance_name, arch, cpu, ram, price_hourly, price_monthly, currency, updated_at)
VALUES ('azure', 'Medium Size', 'Standard_F2ams_v6', 'amd64', 2, 16, 0.023, 16.43, '$', '2026-03-19');

-- +goose Down

DELETE FROM public.cloud_instances
WHERE cloud_provider = 'azure'
  AND instance_name = 'Standard_F2ams_v6';
