# basic_widgets

A Flutter practice project where I'm learning the basics of building UIs, one widget at a time. Each file in `lib/` is a small exercise, and the code is written to be simple and readable rather than clever.

## What's in here

### Profile card design (`lib/55design.dart`)

A social profile card built from a reference design, using only core widgets:

- **Banner image** loaded from the network, darkened with `color` and `BlendMode.darken`
- **Overlapping layout** with `Stack` and `Positioned`: banner at the back, card on top, avatar over the card's edge
- **Circular avatar** clipped with `clipBehavior` and `BoxShape.circle`, with layered glow rings made from stacked `boxShadow`s
- **Social icon row** with circled icons (`font_awesome_flutter`)
- **Follower stats** built with `Row` and `Column`
- **"Followers you may know" band** with overlapping circular photos placed using `Stack` and `Positioned`
- **Follow button** styled with `ElevatedButton.styleFrom`
- Repeated pieces (avatars, social icons) pulled out into small helper methods
- 
### Home page with switchable banner (`lib/home_page.dart`)

A travel-style page where the banner image can be switched with next and previous buttons:

- **List of image URLs** with an `index` variable that tracks which one is showing
- **`StatefulWidget`** and `setState` to redraw the banner when the index changes
- **Next and previous buttons** placed over the banner with `Stack` and `Positioned`
- **Collection `if`** inside the `children` list, so each button only exists when there's an image to go to

### Other practice files

- ListView and ListView.builder exercises

## Concepts practiced

- `Column`, `Row`, and their main axis / cross axis alignment
- `Stack` and `Positioned` for layering widgets
- `child` vs `children`
- `Container`, `Padding`, `SizedBox`, `Card`
- `BoxDecoration`: shape, border, color, shadows
- Extracting repeated UI into methods
- `ListView` and `ListView.builder`
- `GridView` and `GridView.builder`
- `Navigate` with `Navigator.push`, and `Navigator.pushReplacement`
- Stateless and Stateful Widgets
- Counter App made using `StatefulWidget`, `floatingActionButton`, and `setState`
- Showing and hiding widgets with a collection `if`
- Lists and index-based access (`images[index]`)

## Packages

| Package | Used for |
| --- | --- |
| `material_ui` | Material widgets |
| `font_awesome_flutter` (11.0.0+) | Brand icons (Instagram, Dribbble, X, ...) |

Use `FaIcon(...)` for Font Awesome icons. The plain `Icon(...)` widget only accepts Material icons.

## Running the project

```bash
git clone https://github.com/scilentgemini/flutter_basic_project.git
cd flutter_basic_project
flutter pub get
flutter run
```

To run a specific file:

```bash
flutter run lib/55design.dart
```

Built and tested with Flutter 3.50.

## Notes

- Images in the profile card load from external URLs. Links from social media CDNs expire, so a circle may show up blank later. Replace those with stable image links if that happens.
