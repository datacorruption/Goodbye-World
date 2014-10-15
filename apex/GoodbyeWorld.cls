class Goodbyeworld {
    public GoodbyeWorld() {
        ApexPages.addMessage(new ApexPages.Message(
            ApexPages.Severity.ERROR,
            'Goodbye World'
        ));
    }
}
