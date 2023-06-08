# Biblioteca de componentes visuais para os projetos do manga easy

Exemplos de uso:
### CoffeeText
```dart
CoffeeText(
  text: 'seu texto',
  typography: CoffeeTypography.button,
)
```
### CoffeeButton
```dart
CoffeeButton(
  label: 'seu texto',
  onPressed: () {},
),
```
### CoffeeDialogUnicorn
```dart
CoffeeDialogUnicorn(
  title: 'DialogUnicorn error',
  middleText: 'Erro',
).error(context),
```
### CoffeeCarousel
```dart
CoffeeCarousel(
  items: <CarouselDTO> [
    CarouselDTO (
      link: 'target url',
      image: 'image url',
    ),
  ],
  onTap: (CarouselDTO i) {},
)
```
### UnicornPage
```dart
UnicornPage(
  unicorn: AssetsUnicorn.image,
  body: 'body',
  title: 'title',
),
)
```
