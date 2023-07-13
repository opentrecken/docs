
``` mermaid
graph LR
  A[Start] --> B{Error?};
  B -->|Yes| C[Hmm...];
  C --> D[Debug];
  D --> B;
  B ---->|No| E[Yay!];

``` 


``` mermaid
erDiagram
  CUSTOMER ||--o{ ORDER : places
  ORDER ||--|{ LINE-ITEM : contains
  LINE-ITEM {
    string name
    int pricePerUnit
  }
  CUSTOMER }|..|{ DELIVERY-ADDRESS : uses
```      

``` mermaid
flowchart TD
    A[Christmas] -->|Get money| B(Go shopping)
    B --> C{Let me think}
    C -->|One| D[Laptop]
    C -->|Two| E[iPhone]
    C -->|Three| F[fa:fa-car Car]
```

``` mermaid
flowchart LR
    *-->A
    A[Keimung] -->|1-7 Tage| B
    B[Keimling] -->|2 Wochen| C
    C[Vegetative Phase]  -->|2-8 Wochen| D
    D[Blüte] -->|6-12 Wochen| E
    E[Ernte]
```