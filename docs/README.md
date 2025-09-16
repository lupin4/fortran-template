# Documentation

This directory is reserved for project documentation.

## Recommended Documentation Structure

### For FORD Documentation
If you want to use FORD for automatic documentation generation:

1. Create a `ford.md` file in the project root with FORD configuration
2. Documentation will be generated in this directory

### Manual Documentation
You can also add manual documentation files:

- `API.md` - API reference
- `TUTORIAL.md` - User tutorials
- `DEVELOPER.md` - Developer guide
- `EXAMPLES.md` - Detailed examples

### Building Documentation

```bash
# Using FORD (if configured)
ford ford.md

# The generated documentation will appear in this directory
```

## Documentation Best Practices

- Use clear, descriptive comments in source code
- Include examples in docstrings
- Keep documentation up to date with code changes
- Use consistent formatting and style