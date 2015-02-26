<list>
    <ul class="list-group">
    <li each={ item, i in items }
        class="list-group-item {active:parent.isSelectedItem(item)}"
        onclick={parent.selectItem}>{ item.title }</li>
    </ul>

    <script>

    this.items = opts.data || [];

    this.selectedItem = null;

    isSelectedItem(item) {
        return this.selectedItem === item;
    }

    selectItem(e) {
        this.selectedItem = e.item.item;
        return true;
    }
    </script>
</list>