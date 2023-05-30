package co.edu.sena.java_new_a.model.Beans;

public class Category {


    private  Integer  category_product;
    private String name_category;

    public Category() {
    }

    public Category(Integer category_product, String name_category) {
        this.category_product = category_product;
        this.name_category = name_category;
    }


    public Integer getCategory_product() {
        return category_product;
    }

    public void setCategory_product(Integer category_product) {
        this.category_product = category_product;
    }

    public String getName_category() {
        return name_category;
    }

    public void setName_category(String name_category) {
        this.name_category = name_category;
    }

    @Override
    public String toString() {
        return "Category{" +
                "category_product=" + category_product +
                ", name_category='" + name_category + '\'' +
                '}';
    }
}
