# Screen Reader Only CSS

This CSS rule is used to visually hide content from users while still making it accessible to screen readers. This technique is often used to provide additional information for assistive technologies like screen readers, without cluttering the visual interface.

```css
.sr-only {
  border: 0;
  clip: rect(1px, 1px, 1px, 1px);
  clip-path: inset(50%);
  height: 1px;
  width: 1px;
  overflow: hidden;
  white-space: nowrap;
  padding: 0;
  margin: -1px;
  position: absolute;
}
```

This style is a common accessibility pattern called **visually hidden but accessible**, often used for elements like screen reader-only text (sr-only) or skip links.
