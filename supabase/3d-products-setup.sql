-- OD GAMING: enable per-product GLB chair models.
alter table public.products add column if not exists model_path text;
update storage.buckets
set file_size_limit = 20971520,
    allowed_mime_types = array['image/jpeg','image/png','image/webp','image/avif','model/gltf-binary']
where id = 'od-gaming-products';
