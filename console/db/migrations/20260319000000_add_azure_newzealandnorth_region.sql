-- +goose Up

-- Add Azure New Zealand North region
INSERT INTO public.cloud_regions (cloud_provider, region_group, region_name, region_description)
VALUES ('azure', 'Asia Pacific', 'newzealandnorth', 'New Zealand North (Auckland)');

-- +goose Down

DELETE FROM public.cloud_regions
WHERE cloud_provider = 'azure'
  AND region_name = 'newzealandnorth';
