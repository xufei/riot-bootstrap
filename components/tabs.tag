<tabs>
    <h2>Tabs</h2>
    <ul class="nav nav-tabs">
        <li each={ tab, i in tabs } class="{ active: parent.isActiveTab(tab) }" onclick={ parent.toggleTab }>
            <a href="javascript:void(0)">{tab.title}</a>
        </li>
    </ul>
    <div class="tab-content">
        <div each={ tab, i in tabs } class="tab-pane { active: parent.isActiveTab(tab) }">{tab.content}</div>
    </div>

    <script>
    this.tabs = [
        { title: 'Tab 1', ref: 'tab1', content: "(1) Lorem ipsum dolor" },
        { title: 'Tab 2', ref: 'tab2', content: "(2) Lorem ipsum dolor" },
        { title: 'Tab 3', ref: 'tab3', content: "(3) Lorem ipsum dolor" }
    ];

    this.activeTab = this.tabs[0];

    isActiveTab(tab) {
        return this.activeTab === tab;
    }

    toggleTab(e) {
        this.activeTab = e.item.tab;
        this.update();
        return true;
    }
    </script>
</tabs>