INSERT INTO
  "SiteSettings" ("id", "enabled", "data")
VALUES
  (
    'site.banner',
    FALSE,
    JSONB_BUILD_OBJECT(
      'content',
      'This is a test banner',
      'bgColor',
      '#000000',
      'textColor',
      '#ffffff'
    )
  );
